# Generated from default/object.tt
package Paws::Config::OrganizationConfigRuleStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has OrganizationConfigRuleName => (is => 'ro', isa => Str, required => 1);
  has OrganizationRuleStatus => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'OrganizationRuleStatus' => {
                                             'type' => 'Str'
                                           },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'OrganizationConfigRuleName' => {
                                                 'type' => 'Str'
                                               }
             },
  'IsRequired' => {
                    'OrganizationRuleStatus' => 1,
                    'OrganizationConfigRuleName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::OrganizationConfigRuleStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationConfigRuleStatus object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., OrganizationRuleStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationConfigRuleStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  


=head2 ErrorMessage => Str

  


=head2 LastUpdateTime => Str

  


=head2 B<REQUIRED> OrganizationConfigRuleName => Str

  


=head2 B<REQUIRED> OrganizationRuleStatus => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

