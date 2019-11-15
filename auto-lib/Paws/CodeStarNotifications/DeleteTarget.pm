
package Paws::CodeStarNotifications::DeleteTarget;
  use Moose;
  has ForceUnsubscribeAll => (is => 'ro', isa => 'Bool');
  has TargetAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTarget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteTarget');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarNotifications::DeleteTargetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::DeleteTarget - Arguments for method DeleteTarget on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTarget on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method DeleteTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTarget.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $DeleteTargetResult = $codestar -notifications->DeleteTarget(
      TargetAddress       => 'MyTargetAddress',
      ForceUnsubscribeAll => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/DeleteTarget>

=head1 ATTRIBUTES


=head2 ForceUnsubscribeAll => Bool

A Boolean value that can be used to delete all associations with this
SNS topic. The default value is FALSE. If set to TRUE, all associations
between that target and every notification rule in your AWS account are
deleted.



=head2 B<REQUIRED> TargetAddress => Str

The Amazon Resource Name (ARN) of the SNS topic to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTarget in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

