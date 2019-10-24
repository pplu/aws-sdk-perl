# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseParametersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabaseParameter/;
  has NextPageToken => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[Lightsail_RelationalDatabaseParameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::Lightsail::RelationalDatabaseParameter',
                                 'type' => 'ArrayRef[Lightsail_RelationalDatabaseParameter]'
                               },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Parameters' => 'parameters',
                       'NextPageToken' => 'nextPageToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseParametersResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
static IPs request.


=head2 Parameters => ArrayRef[Lightsail_RelationalDatabaseParameter]

An object describing the result of your get relational database
parameters request.


=head2 _request_id => Str


=cut

1;