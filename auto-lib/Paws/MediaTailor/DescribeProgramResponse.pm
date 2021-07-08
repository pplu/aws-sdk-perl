
package Paws::MediaTailor::DescribeProgramResponse;
  use Moose;
  has AdBreaks => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::AdBreak]');
  has Arn => (is => 'ro', isa => 'Str');
  has ChannelName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ProgramName => (is => 'ro', isa => 'Str');
  has SourceLocationName => (is => 'ro', isa => 'Str');
  has VodSourceName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DescribeProgramResponse

=head1 ATTRIBUTES


=head2 AdBreaks => ArrayRef[L<Paws::MediaTailor::AdBreak>]

The ad break configuration settings.


=head2 Arn => Str

The ARN of the program.


=head2 ChannelName => Str

The name of the channel that the program belongs to.


=head2 CreationTime => Str

The timestamp of when the program was created.


=head2 ProgramName => Str

The name of the program.


=head2 SourceLocationName => Str

The source location name.


=head2 VodSourceName => Str

The name that's used to refer to a VOD source.


=head2 _request_id => Str


=cut

