# Generated from json/callresult_class.tt

package Paws::Lightsail::GetOperationsForResourceResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Operation/;
  has NextPageCount => (is => 'ro', isa => Str);
  has NextPageToken => (is => 'ro', isa => Str);
  has Operations => (is => 'ro', isa => ArrayRef[Lightsail_Operation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'NextPageCount' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Operations' => {
                                 'class' => 'Paws::Lightsail::Operation',
                                 'type' => 'ArrayRef[Lightsail_Operation]'
                               }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'NextPageCount' => 'nextPageCount',
                       'Operations' => 'operations'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetOperationsForResourceResult

=head1 ATTRIBUTES


=head2 NextPageCount => Str

(Deprecated) Returns the number of pages of results that remain.

In releases prior to June 12, 2017, this parameter returned C<null> by
the API. It is now deprecated, and the API returns the C<next page
token> parameter instead.


=head2 NextPageToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 Operations => ArrayRef[Lightsail_Operation]

An array of key-value pairs containing information about the results of
your get operations for resource request.


=head2 _request_id => Str


=cut

1;