# Generated from default/object.tt
package Paws::SageMaker::NotificationConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has NotificationTopicArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NotificationTopicArn' => {
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

Paws::SageMaker::NotificationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::NotificationConfiguration object:

  $service_obj->Method(Att1 => { NotificationTopicArn => $value, ..., NotificationTopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::NotificationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->NotificationTopicArn

=head1 DESCRIPTION

Configures SNS notifications of available or expiring work items for
work teams.

=head1 ATTRIBUTES


=head2 NotificationTopicArn => Str

  The ARN for the SNS topic to which notifications should be published.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

