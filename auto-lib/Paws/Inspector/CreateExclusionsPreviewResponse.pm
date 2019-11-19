# Generated from json/callresult_class.tt

package Paws::Inspector::CreateExclusionsPreviewResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has PreviewToken => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PreviewToken' => 'previewToken'
                     },
  'IsRequired' => {
                    'PreviewToken' => 1
                  },
  'types' => {
               'PreviewToken' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateExclusionsPreviewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PreviewToken => Str

Specifies the unique identifier of the requested exclusions preview.
You can use the unique identifier to retrieve the exclusions preview
when running the GetExclusionsPreview API.


=head2 _request_id => Str


=cut

1;