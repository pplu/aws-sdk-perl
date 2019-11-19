# Generated from json/callresult_class.tt

package Paws::CodeCommit::PutRepositoryTriggersOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has ConfigurationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationId' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ConfigurationId' => 'configurationId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutRepositoryTriggersOutput

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

The system-generated unique ID for the create or update operation.


=head2 _request_id => Str


=cut

1;