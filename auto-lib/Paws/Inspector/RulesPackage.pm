# Generated from default/object.tt
package Paws::Inspector::RulesPackage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Provider => (is => 'ro', isa => Str, required => 1);
  has Version => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'Provider' => {
                               'type' => 'Str'
                             },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Version' => 'version',
                       'Provider' => 'provider',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'Version' => 1,
                    'Provider' => 1,
                    'Arn' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RulesPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::RulesPackage object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::RulesPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an Amazon Inspector rules package. This data
type is used as the response element in the DescribeRulesPackages
action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN of the rules package.


=head2 Description => Str

  The description of the rules package.


=head2 B<REQUIRED> Name => Str

  The name of the rules package.


=head2 B<REQUIRED> Provider => Str

  The provider of the rules package.


=head2 B<REQUIRED> Version => Str

  The version ID of the rules package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

