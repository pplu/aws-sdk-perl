
package Paws::Lightsail::ReleaseStaticIp;
  use Moose;
  has StaticIpName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'staticIpName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseStaticIp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::ReleaseStaticIpResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ReleaseStaticIp - Arguments for method ReleaseStaticIp on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReleaseStaticIp on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method ReleaseStaticIp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReleaseStaticIp.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $ReleaseStaticIpResult = $lightsail->ReleaseStaticIp(
      StaticIpName => 'MyResourceName',

    );

    # Results:
    my $Operations = $ReleaseStaticIpResult->Operations;

    # Returns a L<Paws::Lightsail::ReleaseStaticIpResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/ReleaseStaticIp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StaticIpName => Str

The name of the static IP to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReleaseStaticIp in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

