# Generated from default/object.tt
package Paws::Config::RemediationConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_RemediationParameters/;
  has ConfigRuleName => (is => 'ro', isa => Str, required => 1);
  has Parameters => (is => 'ro', isa => Config_RemediationParameters);
  has ResourceType => (is => 'ro', isa => Str);
  has TargetId => (is => 'ro', isa => Str, required => 1);
  has TargetType => (is => 'ro', isa => Str, required => 1);
  has TargetVersion => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::Config::RemediationParameters',
                                 'type' => 'Config_RemediationParameters'
                               },
               'TargetType' => {
                                 'type' => 'Str'
                               },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'TargetVersion' => {
                                    'type' => 'Str'
                                  },
               'ConfigRuleName' => {
                                     'type' => 'Str'
                                   },
               'TargetId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'TargetType' => 1,
                    'ConfigRuleName' => 1,
                    'TargetId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RemediationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RemediationConfiguration object:

  $service_obj->Method(Att1 => { ConfigRuleName => $value, ..., TargetVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RemediationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigRuleName

=head1 DESCRIPTION

An object that represents the details about the remediation
configuration that includes the remediation action, parameters, and
data to execute the action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

  The name of the AWS Config rule.


=head2 Parameters => Config_RemediationParameters

  An object of the RemediationParameterValue.


=head2 ResourceType => Str

  The type of a resource.


=head2 B<REQUIRED> TargetId => Str

  Target ID is the name of the public document.


=head2 B<REQUIRED> TargetType => Str

  The type of the target. Target executes remediation. For example, SSM
document.


=head2 TargetVersion => Str

  Version of the target. For example, version of the SSM document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

