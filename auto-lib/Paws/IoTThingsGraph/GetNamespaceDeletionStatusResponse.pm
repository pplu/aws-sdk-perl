# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::GetNamespaceDeletionStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has NamespaceArn => (is => 'ro', isa => Str);
  has NamespaceName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status',
                       'NamespaceName' => 'namespaceName',
                       'ErrorCode' => 'errorCode',
                       'NamespaceArn' => 'namespaceArn',
                       'ErrorMessage' => 'errorMessage'
                     },
  'types' => {
               'NamespaceName' => {
                                    'type' => 'Str'
                                  },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NamespaceArn' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetNamespaceDeletionStatusResponse

=head1 ATTRIBUTES


=head2 ErrorCode => Str

An error code returned by the namespace deletion task.

Valid values are: C<"VALIDATION_FAILED">
=head2 ErrorMessage => Str

An error code returned by the namespace deletion task.


=head2 NamespaceArn => Str

The ARN of the namespace that is being deleted.


=head2 NamespaceName => Str

The name of the namespace that is being deleted.


=head2 Status => Str

The status of the deletion request.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;