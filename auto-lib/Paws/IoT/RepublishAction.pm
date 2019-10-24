# Generated from default/object.tt
package Paws::IoT::RepublishAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has Topic => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Topic' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'Topic' => 'topic'
                     },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'Topic' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RepublishAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::RepublishAction object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., Topic => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::RepublishAction object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Describes an action to republish to another topic.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the IAM role that grants access.


=head2 B<REQUIRED> Topic => Str

  The name of the MQTT topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

