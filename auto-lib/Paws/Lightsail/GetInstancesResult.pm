# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstancesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Instance/;
  has Instances => (is => 'ro', isa => ArrayRef[Lightsail_Instance]);
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
               'Instances' => {
                                'class' => 'Paws::Lightsail::Instance',
                                'type' => 'ArrayRef[Lightsail_Instance]'
                              }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'Instances' => 'instances'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstancesResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[Lightsail_Instance]

An array of key-value pairs containing information about your
instances.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
instances request.


=head2 _request_id => Str


=cut

1;