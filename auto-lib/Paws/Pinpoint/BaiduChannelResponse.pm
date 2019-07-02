
package Paws::Pinpoint::BaiduChannelResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Credential => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool');
  has HasCredential => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has IsArchived => (is => 'ro', isa => 'Bool');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::BaiduChannelResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The unique identifier for the application that the Baidu channel
applies to.


=head2 CreationDate => Str

The date and time when the Baidu channel was enabled.


=head2 B<REQUIRED> Credential => Str

The API key that you received from the Baidu Cloud Push service to
communicate with the service.


=head2 Enabled => Bool

Specifies whether the Baidu channel is enabled for the application.


=head2 HasCredential => Bool

(Not used) This property is retained only for backward compatibility.


=head2 Id => Str

(Deprecated) An identifier for the Baidu channel. This property is
retained only for backward compatibility.


=head2 IsArchived => Bool

Specifies whether the Baidu channel is archived.


=head2 LastModifiedBy => Str

The user who last modified the Baidu channel.


=head2 LastModifiedDate => Str

The date and time when the Baidu channel was last modified.


=head2 B<REQUIRED> Platform => Str

The type of messaging or notification platform for the channel. For the
Baidu channel, this value is BAIDU.


=head2 Version => Int

The current version of the Baidu channel.


=head2 _request_id => Str


=cut

