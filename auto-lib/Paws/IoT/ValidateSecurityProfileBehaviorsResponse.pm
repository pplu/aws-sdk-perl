
package Paws::IoT::ValidateSecurityProfileBehaviorsResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::IoT::Types qw/IoT_ValidationError/;
  has Valid => (is => 'ro', isa => Bool);
  has ValidationErrors => (is => 'ro', isa => ArrayRef[IoT_ValidationError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ValidationErrors' => {
                                       'class' => 'Paws::IoT::ValidationError',
                                       'type' => 'ArrayRef[IoT_ValidationError]'
                                     },
               'Valid' => {
                            'type' => 'Bool'
                          }
             },
  'NameInRequest' => {
                       'ValidationErrors' => 'validationErrors',
                       'Valid' => 'valid'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ValidateSecurityProfileBehaviorsResponse

=head1 ATTRIBUTES


=head2 Valid => Bool

True if the behaviors were valid.


=head2 ValidationErrors => ArrayRef[IoT_ValidationError]

The list of any errors found in the behaviors.


=head2 _request_id => Str


=cut

