# Generated from default/object.tt
package Paws::IoT::TopicRuleDestinationConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoT::Types qw/IoT_HttpUrlDestinationConfiguration/;
  has HttpUrlConfiguration => (is => 'ro', isa => IoT_HttpUrlDestinationConfiguration);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'HttpUrlConfiguration' => 'httpUrlConfiguration'
                     },
  'types' => {
               'HttpUrlConfiguration' => {
                                           'type' => 'IoT_HttpUrlDestinationConfiguration',
                                           'class' => 'Paws::IoT::HttpUrlDestinationConfiguration'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TopicRuleDestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TopicRuleDestinationConfiguration object:

  $service_obj->Method(Att1 => { HttpUrlConfiguration => $value, ..., HttpUrlConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TopicRuleDestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpUrlConfiguration

=head1 DESCRIPTION

Configuration of the topic rule destination.

=head1 ATTRIBUTES


=head2 HttpUrlConfiguration => IoT_HttpUrlDestinationConfiguration

  Configuration of the HTTP URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

