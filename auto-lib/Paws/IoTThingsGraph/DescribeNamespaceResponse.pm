# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::DescribeNamespaceResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has NamespaceArn => (is => 'ro', isa => Str);
  has NamespaceName => (is => 'ro', isa => Str);
  has NamespaceVersion => (is => 'ro', isa => Int);
  has TrackingNamespaceName => (is => 'ro', isa => Str);
  has TrackingNamespaceVersion => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NamespaceArn' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NamespaceName' => {
                                    'type' => 'Str'
                                  },
               'TrackingNamespaceVersion' => {
                                               'type' => 'Int'
                                             },
               'TrackingNamespaceName' => {
                                            'type' => 'Str'
                                          },
               'NamespaceVersion' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'TrackingNamespaceVersion' => 'trackingNamespaceVersion',
                       'TrackingNamespaceName' => 'trackingNamespaceName',
                       'NamespaceArn' => 'namespaceArn',
                       'NamespaceName' => 'namespaceName',
                       'NamespaceVersion' => 'namespaceVersion'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DescribeNamespaceResponse

=head1 ATTRIBUTES


=head2 NamespaceArn => Str

The ARN of the namespace.


=head2 NamespaceName => Str

The name of the namespace.


=head2 NamespaceVersion => Int

The version of the user's namespace to describe.


=head2 TrackingNamespaceName => Str

The name of the public namespace that the latest namespace version is
tracking.


=head2 TrackingNamespaceVersion => Int

The version of the public namespace that the latest version is
tracking.


=head2 _request_id => Str


=cut

1;