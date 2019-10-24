# Generated from json/callresult_class.tt

package Paws::Inspector::GetExclusionsPreviewResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Inspector::Types qw/Inspector_ExclusionPreview/;
  has ExclusionPreviews => (is => 'ro', isa => ArrayRef[Inspector_ExclusionPreview]);
  has NextToken => (is => 'ro', isa => Str);
  has PreviewStatus => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExclusionPreviews' => {
                                        'class' => 'Paws::Inspector::ExclusionPreview',
                                        'type' => 'ArrayRef[Inspector_ExclusionPreview]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PreviewStatus' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'ExclusionPreviews' => 'exclusionPreviews',
                       'NextToken' => 'nextToken',
                       'PreviewStatus' => 'previewStatus'
                     },
  'IsRequired' => {
                    'PreviewStatus' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetExclusionsPreviewResponse

=head1 ATTRIBUTES


=head2 ExclusionPreviews => ArrayRef[Inspector_ExclusionPreview]

Information about the exclusions included in the preview.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameters is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 B<REQUIRED> PreviewStatus => Str

Specifies the status of the request to generate an exclusions preview.

Valid values are: C<"WORK_IN_PROGRESS">, C<"COMPLETED">
=head2 _request_id => Str


=cut

1;