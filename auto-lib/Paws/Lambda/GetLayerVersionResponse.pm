
package Paws::Lambda::GetLayerVersionResponse;
  use Moose;
  has CompatibleRuntimes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Content => (is => 'ro', isa => 'Paws::Lambda::LayerVersionContentOutput');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LayerArn => (is => 'ro', isa => 'Str');
  has LayerVersionArn => (is => 'ro', isa => 'Str');
  has LicenseInfo => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetLayerVersionResponse

=head1 ATTRIBUTES


=head2 CompatibleRuntimes => ArrayRef[Str|Undef]

The layer's compatible runtimes.


=head2 Content => L<Paws::Lambda::LayerVersionContentOutput>

Details about the layer version.


=head2 CreatedDate => Str

The date that the layer version was created, in ISO-8601 format
(https://www.w3.org/TR/NOTE-datetime) (YYYY-MM-DDThh:mm:ss.sTZD).


=head2 Description => Str

The description of the version.


=head2 LayerArn => Str

The ARN of the layer.


=head2 LayerVersionArn => Str

The ARN of the layer version.


=head2 LicenseInfo => Str

The layer's software license.


=head2 Version => Int

The version number.


=head2 _request_id => Str


=cut

