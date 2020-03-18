package Paws::Config::ConformancePackStatusDetail;
  use Moose;
  has ConformancePackArn => (is => 'ro', isa => 'Str', required => 1);
  has ConformancePackId => (is => 'ro', isa => 'Str', required => 1);
  has ConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has ConformancePackState => (is => 'ro', isa => 'Str', required => 1);
  has ConformancePackStatusReason => (is => 'ro', isa => 'Str');
  has LastUpdateCompletedTime => (is => 'ro', isa => 'Str');
  has LastUpdateRequestedTime => (is => 'ro', isa => 'Str', required => 1);
  has StackArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConformancePackStatusDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackStatusDetail object:

  $service_obj->Method(Att1 => { ConformancePackArn => $value, ..., StackArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackStatusDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ConformancePackArn

=head1 DESCRIPTION

Status details of a conformance pack.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackArn => Str

  Amazon Resource Name (ARN) of comformance pack.


=head2 B<REQUIRED> ConformancePackId => Str

  ID of the conformance pack.


=head2 B<REQUIRED> ConformancePackName => Str

  Name of the conformance pack.


=head2 B<REQUIRED> ConformancePackState => Str

  Indicates deployment status of conformance pack.

AWS Config sets the state of the conformance pack to:

=over

=item *

CREATE_IN_PROGRESS when a conformance pack creation is in progress for
an account.

=item *

CREATE_COMPLETE when a conformance pack has been successfully created
in your account.

=item *

CREATE_FAILED when a conformance pack creation failed in your account.

=item *

DELETE_IN_PROGRESS when a conformance pack deletion is in progress.

=item *

DELETE_FAILED when a conformance pack deletion failed in your account.

=back



=head2 ConformancePackStatusReason => Str

  The reason of conformance pack creation failure.


=head2 LastUpdateCompletedTime => Str

  Last time when conformation pack creation and update was successful.


=head2 B<REQUIRED> LastUpdateRequestedTime => Str

  Last time when conformation pack creation and update was requested.


=head2 B<REQUIRED> StackArn => Str

  Amazon Resource Name (ARN) of AWS CloudFormation stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

