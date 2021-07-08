
package Paws::IVS::DeletePlaybackKeyPair;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlaybackKeyPair');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeletePlaybackKeyPair');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::DeletePlaybackKeyPairResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::DeletePlaybackKeyPair - Arguments for method DeletePlaybackKeyPair on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePlaybackKeyPair on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method DeletePlaybackKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePlaybackKeyPair.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $DeletePlaybackKeyPairResponse = $ivs->DeletePlaybackKeyPair(
      Arn => 'MyPlaybackKeyPairArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/DeletePlaybackKeyPair>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

ARN of the key pair to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePlaybackKeyPair in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

