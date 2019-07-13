package Paws::ServiceDiscovery::Operation;
  use Moose;
  has CreateDate => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'Paws::ServiceDiscovery::OperationTargetsMap');
  has Type => (is => 'ro', isa => 'Str');
  has UpdateDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::Operation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::Operation object:

  $service_obj->Method(Att1 => { CreateDate => $value, ..., UpdateDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::Operation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDate

=head1 DESCRIPTION

A complex type that contains information about a specified operation.

=head1 ATTRIBUTES


=head2 CreateDate => Str

  The date and time that the request was submitted, in Unix date/time
format and Coordinated Universal Time (UTC). The value of C<CreateDate>
is accurate to milliseconds. For example, the value C<1516925490.087>
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ErrorCode => Str

  The code associated with C<ErrorMessage>. Values for C<ErrorCode>
include the following:

=over

=item *

C<ACCESS_DENIED>

=item *

C<CANNOT_CREATE_HOSTED_ZONE>

=item *

C<EXPIRED_TOKEN>

=item *

C<HOSTED_ZONE_NOT_FOUND>

=item *

C<INTERNAL_FAILURE>

=item *

C<INVALID_CHANGE_BATCH>

=item *

C<THROTTLED_REQUEST>

=back



=head2 ErrorMessage => Str

  If the value of C<Status> is C<FAIL>, the reason that the operation
failed.


=head2 Id => Str

  The ID of the operation that you want to get information about.


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



=head2 Targets => L<Paws::ServiceDiscovery::OperationTargetsMap>

  The name of the target entity that is associated with the operation:

=over

=item *

B<NAMESPACE>: The namespace ID is returned in the C<ResourceId>
property.

=item *

B<SERVICE>: The service ID is returned in the C<ResourceId> property.

=item *

B<INSTANCE>: The instance ID is returned in the C<ResourceId> property.

=back



=head2 Type => Str

  The name of the operation that is associated with the specified ID.


=head2 UpdateDate => Str

  The date and time that the value of C<Status> changed to the current
value, in Unix date/time format and Coordinated Universal Time (UTC).
The value of C<UpdateDate> is accurate to milliseconds. For example,
the value C<1516925490.087> represents Friday, January 26, 2018
12:11:30.087 AM.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

