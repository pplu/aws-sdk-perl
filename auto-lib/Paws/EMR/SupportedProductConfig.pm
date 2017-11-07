package Paws::EMR::SupportedProductConfig;
  use Moose;
  has Args => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::SupportedProductConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::SupportedProductConfig object:

  $service_obj->Method(Att1 => { Args => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::SupportedProductConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Args

=head1 DESCRIPTION

The list of supported product configurations which allow user-supplied
arguments. EMR accepts these arguments and forwards them to the
corresponding installation script as bootstrap action arguments.

=head1 ATTRIBUTES


=head2 Args => ArrayRef[Str|Undef]

  The list of user-supplied arguments.


=head2 Name => Str

  The name of the product configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

