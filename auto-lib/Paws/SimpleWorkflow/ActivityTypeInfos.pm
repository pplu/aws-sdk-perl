# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::ActivityTypeInfos;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_ActivityTypeInfo/;
  has NextPageToken => (is => 'ro', isa => Str);
  has TypeInfos => (is => 'ro', isa => ArrayRef[SimpleWorkflow_ActivityTypeInfo], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TypeInfos' => {
                                'class' => 'Paws::SimpleWorkflow::ActivityTypeInfo',
                                'type' => 'ArrayRef[SimpleWorkflow_ActivityTypeInfo]'
                              },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'TypeInfos' => 'typeInfos'
                     },
  'IsRequired' => {
                    'TypeInfos' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTypeInfos

=head1 ATTRIBUTES


=head2 NextPageToken => Str

If a C<NextPageToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextPageToken>. Keep all other
arguments unchanged.

The configured C<maximumPageSize> determines how many results can be
returned in a single call.


=head2 B<REQUIRED> TypeInfos => ArrayRef[SimpleWorkflow_ActivityTypeInfo]

List of activity type information.


=head2 _request_id => Str


=cut

1;