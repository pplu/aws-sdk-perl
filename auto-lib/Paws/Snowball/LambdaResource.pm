# Generated from default/object.tt
package Paws::Snowball::LambdaResource;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Snowball::Types qw/Snowball_EventTriggerDefinition/;
  has EventTriggers => (is => 'ro', isa => ArrayRef[Snowball_EventTriggerDefinition]);
  has LambdaArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LambdaArn' => {
                                'type' => 'Str'
                              },
               'EventTriggers' => {
                                    'class' => 'Paws::Snowball::EventTriggerDefinition',
                                    'type' => 'ArrayRef[Snowball_EventTriggerDefinition]'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::LambdaResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::LambdaResource object:

  $service_obj->Method(Att1 => { EventTriggers => $value, ..., LambdaArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::LambdaResource object:

  $result = $service_obj->Method(...);
  $result->Att1->EventTriggers

=head1 DESCRIPTION

Identifies

=head1 ATTRIBUTES


=head2 EventTriggers => ArrayRef[Snowball_EventTriggerDefinition]

  The array of ARNs for S3Resource objects to trigger the LambdaResource
objects associated with this job.


=head2 LambdaArn => Str

  An Amazon Resource Name (ARN) that represents an AWS Lambda function to
be triggered by PUT object actions on the associated local Amazon S3
resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

