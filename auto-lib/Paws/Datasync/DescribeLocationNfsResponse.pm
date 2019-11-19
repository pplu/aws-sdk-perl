# Generated from json/callresult_class.tt

package Paws::Datasync::DescribeLocationNfsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw/Datasync_NfsMountOptions Datasync_OnPremConfig/;
  has CreationTime => (is => 'ro', isa => Str);
  has LocationArn => (is => 'ro', isa => Str);
  has LocationUri => (is => 'ro', isa => Str);
  has MountOptions => (is => 'ro', isa => Datasync_NfsMountOptions);
  has OnPremConfig => (is => 'ro', isa => Datasync_OnPremConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LocationUri' => {
                                  'type' => 'Str'
                                },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'MountOptions' => {
                                   'class' => 'Paws::Datasync::NfsMountOptions',
                                   'type' => 'Datasync_NfsMountOptions'
                                 },
               'LocationArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OnPremConfig' => {
                                   'type' => 'Datasync_OnPremConfig',
                                   'class' => 'Paws::Datasync::OnPremConfig'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationNfsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the NFS location was created.


=head2 LocationArn => Str

The Amazon resource Name (ARN) of the NFS location that was described.


=head2 LocationUri => Str

The URL of the source NFS location that was described.


=head2 MountOptions => Datasync_NfsMountOptions

The NFS mount options that DataSync used to mount your NFS share.


=head2 OnPremConfig => Datasync_OnPremConfig




=head2 _request_id => Str


=cut

1;