package Paws::EKS::ErrorDetail;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'resourceIds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ErrorDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::ErrorDetail object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ResourceIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::ErrorDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

An object representing an error when an asynchronous operation fails.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  A brief description of the error.

=over

=item *

B<SubnetNotFound>: One of the subnets associated with the cluster could
not be found.

=item *

B<SecurityGroupNotFound>: One of the security groups associated with
the cluster could not be found.

=item *

B<EniLimitReached>: You have reached the elastic network interface
limit for your account.

=item *

B<IpNotAvailable>: A subnet associated with the cluster does not have
any free IP addresses.

=item *

B<AccessDenied>: You do not have permissions to perform the specified
operation.

=item *

B<OperationNotPermitted>: The service role associated with the cluster
does not have the required access permissions for Amazon EKS.

=item *

B<VpcIdNotFound>: The VPC associated with the cluster could not be
found.

=back



=head2 ErrorMessage => Str

  A more complete description of the error.


=head2 ResourceIds => ArrayRef[Str|Undef]

  An optional field that contains the resource IDs associated with the
error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

