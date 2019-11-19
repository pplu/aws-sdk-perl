# Generated from json/callresult_class.tt

package Paws::ECR::DeleteRepositoryResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw/ECR_Repository/;
  has Repository => (is => 'ro', isa => ECR_Repository);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Repository' => {
                                 'type' => 'ECR_Repository',
                                 'class' => 'Paws::ECR::Repository'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Repository' => 'repository'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::DeleteRepositoryResponse

=head1 ATTRIBUTES


=head2 Repository => ECR_Repository

The repository that was deleted.


=head2 _request_id => Str


=cut

1;