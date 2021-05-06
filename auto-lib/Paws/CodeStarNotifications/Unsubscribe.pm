
package Paws::CodeStarNotifications::Unsubscribe;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has TargetAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Unsubscribe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/unsubscribe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarNotifications::UnsubscribeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::Unsubscribe - Arguments for method Unsubscribe on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Unsubscribe on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method Unsubscribe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Unsubscribe.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $UnsubscribeResult = $codestar -notifications->Unsubscribe(
      Arn           => 'MyNotificationRuleArn',
      TargetAddress => 'MyTargetAddress',

    );

    # Results:
    my $Arn = $UnsubscribeResult->Arn;

    # Returns a L<Paws::CodeStarNotifications::UnsubscribeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/Unsubscribe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the notification rule.



=head2 B<REQUIRED> TargetAddress => Str

The ARN of the SNS topic to unsubscribe from the notification rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Unsubscribe in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

