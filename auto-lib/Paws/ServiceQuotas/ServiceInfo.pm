package Paws::ServiceQuotas::ServiceInfo;
  use Moose;
  has ServiceCode => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ServiceInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceQuotas::ServiceInfo object:

  $service_obj->Method(Att1 => { ServiceCode => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceQuotas::ServiceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ServiceCode

=head1 DESCRIPTION

A structure that contains the C<ServiceName> and C<ServiceCode>. It
does not include all details of the service quota. To get those values,
use the ListServiceQuotas operation.

=head1 ATTRIBUTES


=head2 ServiceCode => Str

  Specifies the service that you want to use.


=head2 ServiceName => Str

  The name of the AWS service specified in the increase request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

