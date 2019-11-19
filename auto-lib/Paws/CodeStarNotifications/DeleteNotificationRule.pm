
package Paws::CodeStarNotifications::DeleteNotificationRule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStarNotifications::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteNotificationRule');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/deleteNotificationRule');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeStarNotifications::DeleteNotificationRuleResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'IsRequired' => {
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::DeleteNotificationRule - Arguments for method DeleteNotificationRule on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNotificationRule on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method DeleteNotificationRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNotificationRule.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $DeleteNotificationRuleResult =
      $codestar -notifications->DeleteNotificationRule(
      Arn => 'MyNotificationRuleArn',

      );

    # Results:
    my $Arn = $DeleteNotificationRuleResult->Arn;

# Returns a L<Paws::CodeStarNotifications::DeleteNotificationRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/DeleteNotificationRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the notification rule you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNotificationRule in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

