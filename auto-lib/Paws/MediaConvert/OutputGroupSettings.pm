# Generated from default/object.tt
package Paws::MediaConvert::OutputGroupSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_MsSmoothGroupSettings MediaConvert_HlsGroupSettings MediaConvert_FileGroupSettings MediaConvert_DashIsoGroupSettings MediaConvert_CmafGroupSettings/;
  has CmafGroupSettings => (is => 'ro', isa => MediaConvert_CmafGroupSettings);
  has DashIsoGroupSettings => (is => 'ro', isa => MediaConvert_DashIsoGroupSettings);
  has FileGroupSettings => (is => 'ro', isa => MediaConvert_FileGroupSettings);
  has HlsGroupSettings => (is => 'ro', isa => MediaConvert_HlsGroupSettings);
  has MsSmoothGroupSettings => (is => 'ro', isa => MediaConvert_MsSmoothGroupSettings);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MsSmoothGroupSettings' => {
                                            'class' => 'Paws::MediaConvert::MsSmoothGroupSettings',
                                            'type' => 'MediaConvert_MsSmoothGroupSettings'
                                          },
               'Type' => {
                           'type' => 'Str'
                         },
               'DashIsoGroupSettings' => {
                                           'class' => 'Paws::MediaConvert::DashIsoGroupSettings',
                                           'type' => 'MediaConvert_DashIsoGroupSettings'
                                         },
               'CmafGroupSettings' => {
                                        'class' => 'Paws::MediaConvert::CmafGroupSettings',
                                        'type' => 'MediaConvert_CmafGroupSettings'
                                      },
               'FileGroupSettings' => {
                                        'class' => 'Paws::MediaConvert::FileGroupSettings',
                                        'type' => 'MediaConvert_FileGroupSettings'
                                      },
               'HlsGroupSettings' => {
                                       'class' => 'Paws::MediaConvert::HlsGroupSettings',
                                       'type' => 'MediaConvert_HlsGroupSettings'
                                     }
             },
  'NameInRequest' => {
                       'MsSmoothGroupSettings' => 'msSmoothGroupSettings',
                       'Type' => 'type',
                       'DashIsoGroupSettings' => 'dashIsoGroupSettings',
                       'CmafGroupSettings' => 'cmafGroupSettings',
                       'FileGroupSettings' => 'fileGroupSettings',
                       'HlsGroupSettings' => 'hlsGroupSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::OutputGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::OutputGroupSettings object:

  $service_obj->Method(Att1 => { CmafGroupSettings => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::OutputGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CmafGroupSettings

=head1 DESCRIPTION

Output Group settings, including type

=head1 ATTRIBUTES


=head2 CmafGroupSettings => MediaConvert_CmafGroupSettings

  Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each
output in a CMAF Output Group may only contain a single video, audio,
or caption output.


=head2 DashIsoGroupSettings => MediaConvert_DashIsoGroupSettings

  Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.


=head2 FileGroupSettings => MediaConvert_FileGroupSettings

  Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to FILE_GROUP_SETTINGS.


=head2 HlsGroupSettings => MediaConvert_HlsGroupSettings

  Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to HLS_GROUP_SETTINGS.


=head2 MsSmoothGroupSettings => MediaConvert_MsSmoothGroupSettings

  Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.


=head2 Type => Str

  Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth
Streaming, CMAF)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

