# Generated from default/object.tt
package Paws::Config::StatusDetailFilters;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has MemberAccountRuleStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              },
               'MemberAccountRuleStatus' => {
                                              'type' => 'Str'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::StatusDetailFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::StatusDetailFilters object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., MemberAccountRuleStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::StatusDetailFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccountId => Str

  


=head2 MemberAccountRuleStatus => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

