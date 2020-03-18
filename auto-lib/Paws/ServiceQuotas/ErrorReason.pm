package Paws::ServiceQuotas::ErrorReason;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ErrorReason

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceQuotas::ErrorReason object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ErrorMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceQuotas::ErrorReason object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Returns an error that explains why the action did not succeed.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  Service Quotas returns the following error values.

C<DEPENDENCY_ACCESS_DENIED_ERROR> is returned when the caller does not
have permission to call the service or service quota. To resolve the
error, you need permission to access the service or service quota.

C<DEPENDENCY_THROTTLING_ERROR> is returned when the service being
called is throttling Service Quotas.

C<DEPENDENCY_SERVICE_ERROR> is returned when the service being called
has availability issues.

C<SERVICE_QUOTA_NOT_AVAILABLE_ERROR> is returned when there was an
error in Service Quotas.


=head2 ErrorMessage => Str

  The error message that provides more detail.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

