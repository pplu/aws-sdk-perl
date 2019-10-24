# Generated from default/object.tt
package Paws::EMR::HadoopJarStepConfig;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::EMR::Types qw/EMR_KeyValue/;
  has Args => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Jar => (is => 'ro', isa => Str, required => 1);
  has MainClass => (is => 'ro', isa => Str);
  has Properties => (is => 'ro', isa => ArrayRef[EMR_KeyValue]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Jar' => {
                          'type' => 'Str'
                        },
               'MainClass' => {
                                'type' => 'Str'
                              },
               'Properties' => {
                                 'class' => 'Paws::EMR::KeyValue',
                                 'type' => 'ArrayRef[EMR_KeyValue]'
                               },
               'Args' => {
                           'type' => 'ArrayRef[Str|Undef]'
                         }
             },
  'IsRequired' => {
                    'Jar' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::HadoopJarStepConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::HadoopJarStepConfig object:

  $service_obj->Method(Att1 => { Args => $value, ..., Properties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::HadoopJarStepConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Args

=head1 DESCRIPTION

A job flow step consisting of a JAR file whose main function will be
executed. The main function submits a job for Hadoop to execute and
waits for the job to finish or fail.

=head1 ATTRIBUTES


=head2 Args => ArrayRef[Str|Undef]

  A list of command line arguments passed to the JAR file's main function
when executed.


=head2 B<REQUIRED> Jar => Str

  A path to a JAR file run during the step.


=head2 MainClass => Str

  The name of the main class in the specified Java file. If not
specified, the JAR file should specify a Main-Class in its manifest
file.


=head2 Properties => ArrayRef[EMR_KeyValue]

  A list of Java properties that are set when the step runs. You can use
these properties to pass key value pairs to your main function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

