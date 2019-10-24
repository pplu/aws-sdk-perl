# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseBundlesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabaseBundle/;
  has Bundles => (is => 'ro', isa => ArrayRef[Lightsail_RelationalDatabaseBundle]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Bundles' => {
                              'class' => 'Paws::Lightsail::RelationalDatabaseBundle',
                              'type' => 'ArrayRef[Lightsail_RelationalDatabaseBundle]'
                            }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'Bundles' => 'bundles'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[Lightsail_RelationalDatabaseBundle]

An object describing the result of your get relational database bundles
request.


=head2 NextPageToken => Str

A token used for advancing to the next page of results of your get
relational database bundles request.


=head2 _request_id => Str


=cut

1;