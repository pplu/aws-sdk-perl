# Generated from default/object.tt
package Paws::MediaLive::ListInputSecurityGroupsResultModel;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::MediaLive::Types qw/MediaLive_InputSecurityGroup/;
  has InputSecurityGroups => (is => 'ro', isa => ArrayRef[MediaLive_InputSecurityGroup]);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InputSecurityGroups' => 'inputSecurityGroups',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'InputSecurityGroups' => {
                                          'class' => 'Paws::MediaLive::InputSecurityGroup',
                                          'type' => 'ArrayRef[MediaLive_InputSecurityGroup]'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputSecurityGroupsResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ListInputSecurityGroupsResultModel object:

  $service_obj->Method(Att1 => { InputSecurityGroups => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ListInputSecurityGroupsResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->InputSecurityGroups

=head1 DESCRIPTION

Result of input security group list request

=head1 ATTRIBUTES


=head2 InputSecurityGroups => ArrayRef[MediaLive_InputSecurityGroup]

  List of input security groups


=head2 NextToken => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

