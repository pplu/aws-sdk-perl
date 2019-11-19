
package Paws::ApiGateway::Template;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has Value => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Value' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Value' => 'value'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Template

=head1 ATTRIBUTES


=head2 Value => Str

The Apache Velocity Template Language (VTL)
(https://velocity.apache.org/engine/devel/vtl-reference-guide.html)
template content used for the template resource.


=head2 _request_id => Str


=cut

