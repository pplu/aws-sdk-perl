# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetBlobOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has Content => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Content' => 1
                  },
  'NameInRequest' => {
                       'Content' => 'content'
                     },
  'types' => {
               'Content' => {
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

Paws::CodeCommit::GetBlobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The content of the blob, usually a file.


=head2 _request_id => Str


=cut

1;