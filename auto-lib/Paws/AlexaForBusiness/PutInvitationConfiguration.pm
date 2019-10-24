# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::PutInvitationConfiguration;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::AlexaForBusiness::Types qw//;
  has ContactEmail => (is => 'ro', isa => Str, predicate => 1);
  has OrganizationName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PrivateSkillIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutInvitationConfiguration');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::PutInvitationConfigurationResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PrivateSkillIds' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'OrganizationName' => {
                                       'type' => 'Str'
                                     },
               'ContactEmail' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'OrganizationName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::PutInvitationConfiguration - Arguments for method PutInvitationConfiguration on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInvitationConfiguration on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method PutInvitationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInvitationConfiguration.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $PutInvitationConfigurationResponse = $a4b->PutInvitationConfiguration(
      OrganizationName => 'MyOrganizationName',
      ContactEmail     => 'MyEmail',               # OPTIONAL
      PrivateSkillIds  => [ 'MySkillId', ... ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/PutInvitationConfiguration>

=head1 ATTRIBUTES


=head2 ContactEmail => Str

The email ID of the organization or individual contact that the
enrolled user can use.



=head2 B<REQUIRED> OrganizationName => Str

The name of the organization sending the enrollment invite to a user.



=head2 PrivateSkillIds => ArrayRef[Str|Undef]

The list of private skill IDs that you want to recommend to the user to
enable in the invitation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInvitationConfiguration in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

