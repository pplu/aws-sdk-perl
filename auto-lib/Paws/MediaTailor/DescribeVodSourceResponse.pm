
package Paws::MediaTailor::DescribeVodSourceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has HttpPackageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::HttpPackageConfiguration]');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has SourceLocationName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has VodSourceName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DescribeVodSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the VOD source.


=head2 CreationTime => Str

The timestamp that indicates when the VOD source was created.


=head2 HttpPackageConfigurations => ArrayRef[L<Paws::MediaTailor::HttpPackageConfiguration>]

The HTTP package configurations.


=head2 LastModifiedTime => Str

The ARN for the VOD source.


=head2 SourceLocationName => Str

The name of the source location associated with the VOD source.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags assigned to the VOD source.


=head2 VodSourceName => Str

The name of the VOD source.


=head2 _request_id => Str


=cut

