
package Paws::Route53::ActivateKeySigningKey;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'HostedZoneId', traits => ['ParamInURI'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'Name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateKeySigningKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/keysigningkey/{HostedZoneId}/{Name}/activate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ActivateKeySigningKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ActivateKeySigningKey - Arguments for method ActivateKeySigningKey on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateKeySigningKey on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ActivateKeySigningKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateKeySigningKey.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ActivateKeySigningKeyResponse = $route53->ActivateKeySigningKey(
      HostedZoneId => 'MyResourceId',
      Name         => 'MySigningKeyName',

    );

    # Results:
    my $ChangeInfo = $ActivateKeySigningKeyResponse->ChangeInfo;

    # Returns a L<Paws::Route53::ActivateKeySigningKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ActivateKeySigningKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

A unique string used to identify a hosted zone.



=head2 B<REQUIRED> Name => Str

A string used to identify a key-signing key (KSK). C<Name> can include
numbers, letters, and underscores (_). C<Name> must be unique for each
key-signing key in the same hosted zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateKeySigningKey in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

