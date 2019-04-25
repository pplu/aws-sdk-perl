package Paws::ServiceDiscovery::OperationSummary;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::OperationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::OperationSummary object:

  $service_obj->Method(Att1 => { Id => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::OperationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

A complex type that contains information about an operation that
matches the criteria that you specified in a ListOperations request.

=head1 ATTRIBUTES


=head2 Id => Str

  The ID for an operation.


=head2 Status => Str

  The status of the operation. Values include the following:

=over

=item *

B<SUBMITTED>: This is the initial state immediately after you submit a
request.

=item *

B<PENDING>: AWS Cloud Map is performing the operation.

=item *

B<SUCCESS>: The operation succeeded.

=item *

B<FAIL>: The operation failed. For the failure reason, see
C<ErrorMessage>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

