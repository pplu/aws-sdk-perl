# Generated from json/callresult_class.tt

package Paws::Lightsail::GetCloudFormationStackRecordsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_CloudFormationStackRecord/;
  has CloudFormationStackRecords => (is => 'ro', isa => ArrayRef[Lightsail_CloudFormationStackRecord]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CloudFormationStackRecords' => {
                                                 'class' => 'Paws::Lightsail::CloudFormationStackRecord',
                                                 'type' => 'ArrayRef[Lightsail_CloudFormationStackRecord]'
                                               },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CloudFormationStackRecords' => 'cloudFormationStackRecords',
                       'NextPageToken' => 'nextPageToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetCloudFormationStackRecordsResult

=head1 ATTRIBUTES


=head2 CloudFormationStackRecords => ArrayRef[Lightsail_CloudFormationStackRecord]

A list of objects describing the CloudFormation stack records.


=head2 NextPageToken => Str

A token used for advancing to the next page of results of your get
relational database bundles request.


=head2 _request_id => Str


=cut

1;