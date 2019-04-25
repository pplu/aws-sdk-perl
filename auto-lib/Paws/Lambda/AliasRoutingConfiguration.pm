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

A Lambda function alias's traffic shifting
(http://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html)
configuration.

=head1 ATTRIBUTES


=head2 AdditionalVersionWeights => L<Paws::Lambda::AdditionalVersionWeights>

  The name of the second alias, and the percentage of traffic that is
routed to it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

