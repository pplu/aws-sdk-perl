# Generated from default/object.tt
package Paws::MediaLive::InputSecurityGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw/MediaLive_InputWhitelistRule MediaLive_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Inputs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);
  has WhitelistRules => (is => 'ro', isa => ArrayRef[MediaLive_InputWhitelistRule]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WhitelistRules' => {
                                     'class' => 'Paws::MediaLive::InputWhitelistRule',
                                     'type' => 'ArrayRef[MediaLive_InputWhitelistRule]'
                                   },
               'Inputs' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
                         },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'WhitelistRules' => 'whitelistRules',
                       'Inputs' => 'inputs',
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSecurityGroup object:

  $service_obj->Method(Att1 => { Arn => $value, ..., WhitelistRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An Input Security Group

=head1 ATTRIBUTES


=head2 Arn => Str

  Unique ARN of Input Security Group


=head2 Id => Str

  The Id of the Input Security Group


=head2 Inputs => ArrayRef[Str|Undef]

  The list of inputs currently using this Input Security Group.


=head2 State => Str

  The current state of the Input Security Group.


=head2 Tags => MediaLive_Tags

  A collection of key-value pairs.


=head2 WhitelistRules => ArrayRef[MediaLive_InputWhitelistRule]

  Whitelist rules and their sync status



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

