# Generated from json/callresult_class.tt

package Paws::Athena::GetQueryResultsOutput;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Athena::Types qw/Athena_ResultSet/;
  has NextToken => (is => 'ro', isa => Str);
  has ResultSet => (is => 'ro', isa => Athena_ResultSet);
  has UpdateCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResultSet' => {
                                'class' => 'Paws::Athena::ResultSet',
                                'type' => 'Athena_ResultSet'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'UpdateCount' => {
                                  'type' => 'Int'
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

Paws::Athena::GetQueryResultsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 ResultSet => Athena_ResultSet

The results of the query execution.


=head2 UpdateCount => Int

The number of rows inserted with a CREATE TABLE AS SELECT statement.


=head2 _request_id => Str


=cut

1;