# Generated from default/object.tt
package Paws::MediaLive::InputSecurityGroupWhitelistRequest;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_Tags MediaLive_InputWhitelistRuleCidr/;
  has Tags => (is => 'ro', isa => MediaLive_Tags);
  has WhitelistRules => (is => 'ro', isa => ArrayRef[MediaLive_InputWhitelistRuleCidr]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'WhitelistRules' => 'whitelistRules',
                       'Tags' => 'tags'
                     },
  'types' => {
               'WhitelistRules' => {
                                     'class' => 'Paws::MediaLive::InputWhitelistRuleCidr',
                                     'type' => 'ArrayRef[MediaLive_InputWhitelistRuleCidr]'
                                   },
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSecurityGroupWhitelistRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSecurityGroupWhitelistRequest object:

  $service_obj->Method(Att1 => { Tags => $value, ..., WhitelistRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSecurityGroupWhitelistRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Tags

=head1 DESCRIPTION

Request of IPv4 CIDR addresses to whitelist in a security group.

=head1 ATTRIBUTES


=head2 Tags => MediaLive_Tags

  A collection of key-value pairs.


=head2 WhitelistRules => ArrayRef[MediaLive_InputWhitelistRuleCidr]

  List of IPv4 CIDR addresses to whitelist



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

