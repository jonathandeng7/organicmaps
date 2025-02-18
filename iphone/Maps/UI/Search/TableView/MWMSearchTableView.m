#import "MWMSearchTableView.h"
#import "MWMKeyboard.h"
#import "MWMSearchNoResults.h"

@interface MWMSearchTableView ()<MWMKeyboardObserver>

@property(weak, nonatomic) IBOutlet NSLayoutConstraint * noResultsBottomOffset;

@property(weak, nonatomic) IBOutlet UIView * noResultsContainer;
@property(weak, nonatomic) IBOutlet UIView * noResultsWrapper;
@property(nonatomic) MWMSearchNoResults * noResultsView;

@end

@implementation MWMSearchTableView

- (void)awakeFromNib
{
  [super awakeFromNib];
  CALayer * sl = self.layer;
  sl.shouldRasterize = YES;
  sl.rasterizationScale = UIScreen.mainScreen.scale;
  [MWMKeyboard addObserver:self];
}

- (void)hideNoResultsView:(BOOL)hide
{
  if (hide)
  {
    self.noResultsContainer.hidden = YES;
    [self.noResultsView removeFromSuperview];
  }
  else
  {
    self.noResultsContainer.hidden = NO;
    [self.noResultsWrapper addSubview:self.noResultsView];
    [self onKeyboardAnimation];
  }
}

- (void)addScrollingEffectToLabel:(UILabel *)label {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (label.text.length > 0) {
            CGSize textSize = [label.text sizeWithAttributes:@{NSFontAttributeName: label.font}];

            if (textSize.width > label.bounds.size.width) {
                [UIView animateWithDuration:5.0 delay:0.5 options:(UIViewAnimationOptionRepeat | UIViewAnimationOptionCurveLinear) animations:^{
                    label.transform = CGAffineTransformMakeTranslation(-textSize.width, 0);
                } completion:nil];
            }
        }
    });
}



#pragma mark - MWMKeyboard

- (void)onKeyboardAnimation
{
  CGFloat const keyboardHeight = [MWMKeyboard keyboardHeight];
  if (keyboardHeight >= self.height)
    return;

  self.noResultsBottomOffset.constant = keyboardHeight;
  if (self.superview)
    [self layoutIfNeeded];
}

- (void)onKeyboardWillAnimate
{
  if (self.superview)
    [self layoutIfNeeded];
}

- (MWMSearchNoResults *)noResultsView
{
  if (!_noResultsView)
{
    _noResultsView = [MWMSearchNoResults viewWithImage:nil 
        title:L(@"search_not_found") 
        text:L(@"search_not_found_query")];

    _noResultsView.titleLabel.numberOfLines = 1;
    _noResultsView.titleLabel.textAlignment = NSTextAlignmentLeft;
    _noResultsView.titleLabel.adjustsFontSizeToFitWidth = NO;
    _noResultsView.titleLabel.clipsToBounds = YES;

    _noResultsView.textLabel.numberOfLines = 1;
    _noResultsView.textLabel.textAlignment = NSTextAlignmentLeft;
    _noResultsView.textLabel.adjustsFontSizeToFitWidth = NO;
    _noResultsView.textLabel.clipsToBounds = YES;

    [self addScrollingEffectToLabel:_noResultsView.titleLabel];
    [self addScrollingEffectToLabel:_noResultsView.textLabel];
}

return _noResultsView;

}

@end
