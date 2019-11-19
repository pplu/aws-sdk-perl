# Generated from default/object.tt
package Paws::GuardDuty::Resource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_AccessKeyDetails GuardDuty_InstanceDetails/;
  has AccessKeyDetails => (is => 'ro', isa => GuardDuty_AccessKeyDetails);
  has InstanceDetails => (is => 'ro', isa => GuardDuty_InstanceDetails);
  has ResourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AccessKeyDetails' => 'accessKeyDetails',
                       'InstanceDetails' => 'instanceDetails',
                       'ResourceType' => 'resourceType'
                     },
  'types' => {
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'InstanceDetails' => {
                                      'class' => 'Paws::GuardDuty::InstanceDetails',
                                      'type' => 'GuardDuty_InstanceDetails'
                                    },
               'AccessKeyDetails' => {
                                       'type' => 'GuardDuty_AccessKeyDetails',
                                       'class' => 'Paws::GuardDuty::AccessKeyDetails'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Resource object:

  $service_obj->Method(Att1 => { AccessKeyDetails => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyDetails

=head1 DESCRIPTION

Contains information about the AWS resource associated with the
activity that prompted GuardDuty to generate a finding.

=head1 ATTRIBUTES


=head2 AccessKeyDetails => GuardDuty_AccessKeyDetails

  The IAM access key details (IAM user information) of a user that
engaged in the activity that prompted GuardDuty to generate a finding.


=head2 InstanceDetails => GuardDuty_InstanceDetails

  The information about the EC2 instance associated with the activity
that prompted GuardDuty to generate a finding.


=head2 ResourceType => Str

  The type of the AWS resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

