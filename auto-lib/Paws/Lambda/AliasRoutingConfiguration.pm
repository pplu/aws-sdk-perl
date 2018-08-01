package Paws::Lambda::AliasRoutingConfiguration;
  use Moose;
  has AdditionalVersionWeights => (is => 'ro', isa => 'Paws::Lambda::AdditionalVersionWeights');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AliasRoutingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::AliasRoutingConfiguration object:

  $service_obj->Method(Att1 => { AdditionalVersionWeights => $value, ..., AdditionalVersionWeights => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::AliasRoutingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalVersionWeights

=head1 DESCRIPTION

The parent object that implements what percentage of traffic will
invoke each function version. For more information, see
lambda-traffic-shifting-using-aliases.

=head1 ATTRIBUTES


=head2 AdditionalVersionWeights => L<Paws::Lambda::AdditionalVersionWeights>

  Set this value to dictate what percentage of traffic will invoke the
updated function version. If set to an empty string, 100 percent of
traffic will invoke C<function-version>. For more information, see
lambda-traffic-shifting-using-aliases.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

