package Paws::Pricing::Service;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceCode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pricing::Service object:

  $service_obj->Method(Att1 => { AttributeNames => $value, ..., ServiceCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pricing::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeNames

=head1 DESCRIPTION

The metadata for a service, such as the service code and available
attribute names.

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

  The attributes that are available for this service.


=head2 ServiceCode => Str

  The code for the AWS service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pricing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

