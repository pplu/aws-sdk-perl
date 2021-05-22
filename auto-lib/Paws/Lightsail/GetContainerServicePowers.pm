
package Paws::Lightsail::GetContainerServicePowers;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContainerServicePowers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetContainerServicePowersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerServicePowers - Arguments for method GetContainerServicePowers on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContainerServicePowers on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetContainerServicePowers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContainerServicePowers.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetContainerServicePowersResult =
      $lightsail->GetContainerServicePowers();

    # Results:
    my $Powers = $GetContainerServicePowersResult->Powers;

    # Returns a L<Paws::Lightsail::GetContainerServicePowersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetContainerServicePowers>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContainerServicePowers in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

