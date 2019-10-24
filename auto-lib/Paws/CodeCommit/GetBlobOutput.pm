# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetBlobOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has Content => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Content' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Content' => 'content'
                     },
  'IsRequired' => {
                    'Content' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetBlobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The content of the blob, usually a file.


=head2 _request_id => Str


=cut

1;