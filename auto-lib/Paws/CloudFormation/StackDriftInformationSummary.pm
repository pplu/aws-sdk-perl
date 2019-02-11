package Paws::CloudFormation::StackDriftInformationSummary;
  use Moose;
  has LastCheckTimestamp => (is => 'ro', isa => 'Str');
  has StackDriftStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackDriftInformationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackDriftInformationSummary object:

  $service_obj->Method(Att1 => { LastCheckTimestamp => $value, ..., StackDriftStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackDriftInformationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->LastCheckTimestamp

=head1 DESCRIPTION

Contains information about whether the stack's actual configuration
differs, or has I<drifted>, from its expected configuration, as defined
in the stack template and any values specified as template parameters.
A stack is considered to have drifted if one or more of its resources
have drifted.

=head1 ATTRIBUTES


=head2 LastCheckTimestamp => Str

  Most recent time when a drift detection operation was initiated on the
stack, or any of its individual resources that support drift detection.


=head2 B<REQUIRED> StackDriftStatus => Str

  Status of the stack's actual configuration compared to its expected
template configuration.

=over

=item *

C<DRIFTED>: The stack differs from its expected template configuration.
A stack is considered to have drifted if one or more of its resources
have drifted.

=item *

C<NOT_CHECKED>: AWS CloudFormation has not checked if the stack differs
from its expected template configuration.

=item *

C<IN_SYNC>: The stack's actual configuration matches its expected
template configuration.

=item *

C<UNKNOWN>: This value is reserved for future use.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

