# Generated from default/object.tt
package Paws::CodeStar::Toolchain;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw/CodeStar_ToolchainSource CodeStar_TemplateParameterMap/;
  has RoleArn => (is => 'ro', isa => Str);
  has Source => (is => 'ro', isa => CodeStar_ToolchainSource, required => 1);
  has StackParameters => (is => 'ro', isa => CodeStar_TemplateParameterMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'StackParameters' => {
                                      'type' => 'CodeStar_TemplateParameterMap',
                                      'class' => 'Paws::CodeStar::TemplateParameterMap'
                                    },
               'Source' => {
                             'class' => 'Paws::CodeStar::ToolchainSource',
                             'type' => 'CodeStar_ToolchainSource'
                           }
             },
  'IsRequired' => {
                    'Source' => 1
                  },
  'NameInRequest' => {
                       'StackParameters' => 'stackParameters',
                       'Source' => 'source',
                       'RoleArn' => 'roleArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::Toolchain

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStar::Toolchain object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., StackParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStar::Toolchain object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

The toolchain template file provided with the project request. AWS
CodeStar uses the template to provision the toolchain stack in AWS
CloudFormation.

=head1 ATTRIBUTES


=head2 RoleArn => Str

  The service role ARN for AWS CodeStar to use for the toolchain template
during stack provisioning.


=head2 B<REQUIRED> Source => CodeStar_ToolchainSource

  The Amazon S3 location where the toolchain template file provided with
the project request is stored. AWS CodeStar retrieves the file during
project creation.


=head2 StackParameters => CodeStar_TemplateParameterMap

  The list of parameter overrides to be passed into the toolchain
template during stack provisioning, if any.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

