# Generated from json/callresult_class.tt

package Paws::Lightsail::GetBlueprintsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Blueprint/;
  has Blueprints => (is => 'ro', isa => ArrayRef[Lightsail_Blueprint]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Blueprints' => {
                                 'class' => 'Paws::Lightsail::Blueprint',
                                 'type' => 'ArrayRef[Lightsail_Blueprint]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Blueprints' => 'blueprints',
                       'NextPageToken' => 'nextPageToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBlueprintsResult

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[Lightsail_Blueprint]

An array of key-value pairs that contains information about the
available blueprints.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
blueprints request.


=head2 _request_id => Str


=cut

1;