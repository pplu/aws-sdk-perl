# Generated from default/object.tt
package Paws::CodePipeline::ActionContext;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has ActionExecutionId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ActionExecutionId' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'ActionExecutionId' => 'actionExecutionId',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionContext object:

  $service_obj->Method(Att1 => { ActionExecutionId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionContext object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionExecutionId

=head1 DESCRIPTION

Represents the context of an action in the stage of a pipeline to a job
worker.

=head1 ATTRIBUTES


=head2 ActionExecutionId => Str

  The system-generated unique ID that corresponds to an action's
execution.


=head2 Name => Str

  The name of the action in the context of a job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

