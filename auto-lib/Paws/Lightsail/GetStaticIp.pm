
package Paws::Lightsail::GetStaticIp;
  use Moose;
  has StaticIpName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'staticIpName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStaticIp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetStaticIpResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetStaticIp - Arguments for method GetStaticIp on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStaticIp on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetStaticIp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStaticIp.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetStaticIpResult = $lightsail->GetStaticIp(
      StaticIpName => 'MyResourceName',

    );

    # Results:
    my $StaticIp = $GetStaticIpResult->StaticIp;

    # Returns a L<Paws::Lightsail::GetStaticIpResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetStaticIp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StaticIpName => Str

The name of the static IP in Lightsail.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStaticIp in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

