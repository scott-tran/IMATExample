//
// Created by stran on 10/12/12.
//



#import "MainController.h"


@implementation MainController {

    UITextField *_nameField;
    UILabel *_greetingLabel;

}
@synthesize nameField = _nameField;
@synthesize greetingLabel = _greetingLabel;

- (void)sayHello {
    self.greetingLabel.text = [NSString stringWithFormat:@"Hello %@", self.nameField.text];

    self.nameField.text = @"";
    [self.nameField resignFirstResponder];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];

    self.greetingLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 30)];
    self.greetingLabel.backgroundColor = [UIColor clearColor];
    self.greetingLabel.accessibilityIdentifier = @"greetingLabel";
    [self.view addSubview:self.greetingLabel];

    self.nameField = [[UITextField alloc] initWithFrame:CGRectMake(20, 60, 200, 30)];
    self.nameField.backgroundColor = [UIColor whiteColor];
    self.nameField.accessibilityIdentifier = @"nameField";
    [self.view addSubview:self.nameField];

    UIButton *helloButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    helloButton.frame = CGRectMake(20, 110, 100, 30);
    [helloButton setTitle:@"Say Hello" forState:UIControlStateNormal];
    [helloButton addTarget:self action:@selector(sayHello) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:helloButton];

}


@end